(declare-fun a_ack!110 () (_ BitVec 32))
(declare-fun b_ack!109 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!110 #xffffffff)))
(assert (not (= #xffffffff a_ack!110)))
(assert (= #x00000000 a_ack!110))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!109) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!109) ((_ to_fp 11 53) #xc014000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!109) ((_ to_fp 11 53) #x4024000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!109)))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!109))))))
  (FPCHECK_FDIV_OVERFLOW a!1 #x4008000000000000)))

(check-sat)
(exit)
