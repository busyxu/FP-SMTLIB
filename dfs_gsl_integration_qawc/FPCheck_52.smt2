(declare-fun limit_ack!836 () (_ BitVec 64))
(declare-fun a_ack!837 () (_ BitVec 64))
(declare-fun b_ack!832 () (_ BitVec 64))
(declare-fun epsabs_ack!834 () (_ BitVec 64))
(declare-fun epsrel_ack!835 () (_ BitVec 64))
(declare-fun c_ack!833 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!836)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!832) ((_ to_fp 11 53) a_ack!837))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!834) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!835)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!835)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!833) ((_ to_fp 11 53) a_ack!837))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!833) ((_ to_fp 11 53) b_ack!832))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!833))
                   ((_ to_fp 11 53) b_ack!832))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!837))
                 ((_ to_fp 11 53) a_ack!837))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!833))
                   ((_ to_fp 11 53) b_ack!832))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!837)))
         ((_ to_fp 11 53) a_ack!837))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!833))
                           ((_ to_fp 11 53) b_ack!832))
                   ((_ to_fp 11 53) a_ack!837))))
(let ((a!2 (and (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))
                (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) b_ack!832)
                               ((_ to_fp 11 53) a_ack!837))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!833))
                           ((_ to_fp 11 53) b_ack!832))
                   ((_ to_fp 11 53) a_ack!837))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!832)
                                   ((_ to_fp 11 53) a_ack!837))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (FPCHECK_FMUL_ACCURACY #x3ff0000000000000 a_ack!837))

(check-sat)
(exit)
