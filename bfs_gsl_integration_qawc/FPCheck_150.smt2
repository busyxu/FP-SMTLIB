(declare-fun limit_ack!1966 () (_ BitVec 64))
(declare-fun a_ack!1967 () (_ BitVec 64))
(declare-fun b_ack!1963 () (_ BitVec 64))
(declare-fun epsabs_ack!1965 () (_ BitVec 64))
(declare-fun c_ack!1964 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1966)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1963) ((_ to_fp 11 53) a_ack!1967)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1965)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1964) ((_ to_fp 11 53) a_ack!1967))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1964) ((_ to_fp 11 53) b_ack!1963))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1964))
                   ((_ to_fp 11 53) a_ack!1967))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!1963))
                 ((_ to_fp 11 53) b_ack!1963))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!1964))
                   ((_ to_fp 11 53) a_ack!1967))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) b_ack!1963)))
         ((_ to_fp 11 53) b_ack!1963))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1964))
                           ((_ to_fp 11 53) a_ack!1967))
                   ((_ to_fp 11 53) b_ack!1963))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1967)
                                   ((_ to_fp 11 53) b_ack!1963))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (FPCHECK_FADD_UNDERFLOW b_ack!1963 a_ack!1967))

(check-sat)
(exit)
