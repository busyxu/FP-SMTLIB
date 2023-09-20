(declare-fun a_ack!950 () (_ BitVec 32))
(declare-fun b_ack!949 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!950 #xffffffff)))
(assert (not (= #xffffffff a_ack!950)))
(assert (not (= #x00000000 a_ack!950)))
(assert (not (= #x00000001 a_ack!950)))
(assert (= #x00000002 a_ack!950))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!949) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!949) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   (CF_exp b_ack!949))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x3fe0000000000000))))
  (FPCHECK_FADD_OVERFLOW
    (CF_exp b_ack!949)
    (fp.mul roundNearestTiesToEven
            (CF_exp b_ack!949)
            (fp.mul roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3fe0000000000000))))))

(check-sat)
(exit)
