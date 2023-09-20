(declare-fun limit_ack!4424 () (_ BitVec 64))
(declare-fun a_ack!4425 () (_ BitVec 64))
(declare-fun b_ack!4420 () (_ BitVec 64))
(declare-fun epsabs_ack!4422 () (_ BitVec 64))
(declare-fun epsrel_ack!4423 () (_ BitVec 64))
(declare-fun c_ack!4421 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!4424)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!4420) ((_ to_fp 11 53) a_ack!4425)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!4422) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4423)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!4423)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4421) ((_ to_fp 11 53) a_ack!4425))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4421) ((_ to_fp 11 53) b_ack!4420))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4421))
                   ((_ to_fp 11 53) a_ack!4425))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!4420))
                 ((_ to_fp 11 53) b_ack!4420))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!4421))
                   ((_ to_fp 11 53) a_ack!4425))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!4420)))
         ((_ to_fp 11 53) b_ack!4420))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!4421))
                           ((_ to_fp 11 53) a_ack!4425))
                   ((_ to_fp 11 53) b_ack!4420))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4425)
                                   ((_ to_fp 11 53) b_ack!4420))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (FPCHECK_FSUB_UNDERFLOW a_ack!4425 b_ack!4420))

(check-sat)
(exit)
