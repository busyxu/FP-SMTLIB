(declare-fun epsabs_ack!117 () (_ BitVec 64))
(declare-fun epsrel_ack!118 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun a_ack!119 () (_ BitVec 64))
(declare-fun b_ack!116 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) epsabs_ack!117)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!118)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!117) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!118)
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!116)
                                   ((_ to_fp 11 53) a_ack!119))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (FPCHECK_FADD_OVERFLOW
    (fp.div roundNearestTiesToEven
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!119)
                    ((_ to_fp 11 53) b_ack!116))
            ((_ to_fp 11 53) #x4000000000000000))
    a!1)))

(check-sat)
(exit)
