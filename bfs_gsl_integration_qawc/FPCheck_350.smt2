(declare-fun limit_ack!4436 () (_ BitVec 64))
(declare-fun a_ack!4437 () (_ BitVec 64))
(declare-fun b_ack!4432 () (_ BitVec 64))
(declare-fun epsabs_ack!4434 () (_ BitVec 64))
(declare-fun epsrel_ack!4435 () (_ BitVec 64))
(declare-fun c_ack!4433 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4436)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!4432) ((_ to_fp 11 53) a_ack!4437)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!4434) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4435)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4435)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4433) ((_ to_fp 11 53) a_ack!4437))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4433) ((_ to_fp 11 53) b_ack!4432))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4433))
                   ((_ to_fp 11 53) a_ack!4437))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!4432))
                 ((_ to_fp 11 53) b_ack!4432))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4433))
                   ((_ to_fp 11 53) a_ack!4437))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!4432)))
         ((_ to_fp 11 53) b_ack!4432))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!4433))
                           ((_ to_fp 11 53) a_ack!4437))
                   ((_ to_fp 11 53) b_ack!4432))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4437)
                                   ((_ to_fp 11 53) b_ack!4432))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (FPCHECK_FSUB_ACCURACY a_ack!4437 b_ack!4432))

(check-sat)
(exit)
