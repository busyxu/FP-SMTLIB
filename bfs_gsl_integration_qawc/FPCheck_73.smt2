(declare-fun limit_ack!939 () (_ BitVec 64))
(declare-fun a_ack!940 () (_ BitVec 64))
(declare-fun b_ack!935 () (_ BitVec 64))
(declare-fun epsabs_ack!937 () (_ BitVec 64))
(declare-fun epsrel_ack!938 () (_ BitVec 64))
(declare-fun c_ack!936 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!939)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!935) ((_ to_fp 11 53) a_ack!940)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!937) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!938)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!938)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!936) ((_ to_fp 11 53) a_ack!940))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!936) ((_ to_fp 11 53) b_ack!935))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!936))
                   ((_ to_fp 11 53) a_ack!940))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!935))
                 ((_ to_fp 11 53) b_ack!935))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!936))
                   ((_ to_fp 11 53) a_ack!940))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!935)))
         ((_ to_fp 11 53) b_ack!935))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!936))
                           ((_ to_fp 11 53) a_ack!940))
                   ((_ to_fp 11 53) b_ack!935))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!940)
                                   ((_ to_fp 11 53) b_ack!935))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (FPCHECK_FADD_OVERFLOW b_ack!935 a_ack!940))

(check-sat)
(exit)
