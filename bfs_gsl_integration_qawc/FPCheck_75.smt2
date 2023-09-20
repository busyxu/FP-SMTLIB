(declare-fun limit_ack!963 () (_ BitVec 64))
(declare-fun a_ack!964 () (_ BitVec 64))
(declare-fun b_ack!959 () (_ BitVec 64))
(declare-fun epsabs_ack!961 () (_ BitVec 64))
(declare-fun epsrel_ack!962 () (_ BitVec 64))
(declare-fun c_ack!960 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!963)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!959) ((_ to_fp 11 53) a_ack!964)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!961) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!962)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!962)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!960) ((_ to_fp 11 53) a_ack!964))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!960) ((_ to_fp 11 53) b_ack!959))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!960))
                   ((_ to_fp 11 53) a_ack!964))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!959))
                 ((_ to_fp 11 53) b_ack!959))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!960))
                   ((_ to_fp 11 53) a_ack!964))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!959)))
         ((_ to_fp 11 53) b_ack!959))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!960))
                           ((_ to_fp 11 53) a_ack!964))
                   ((_ to_fp 11 53) b_ack!959))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!964)
                                   ((_ to_fp 11 53) b_ack!959))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (FPCHECK_FADD_ACCURACY b_ack!959 a_ack!964))

(check-sat)
(exit)
