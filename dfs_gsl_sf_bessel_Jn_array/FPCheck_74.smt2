(declare-fun a_ack!341 () (_ BitVec 32))
(declare-fun b_ack!339 () (_ BitVec 32))
(declare-fun c_ack!340 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!341 #x00000000)))
(assert (not (bvslt b_ack!339 a_ack!341)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!340) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!339) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!340) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!339)))
(assert (= #x00000000 b_ack!339))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!340))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!340))
            ((_ to_fp 11 53) #x0020000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!340))
       ((_ to_fp 11 53) #x3e66a09e667f3bcd)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          ((_ to_fp 11 53) c_ack!340))))

(check-sat)
(exit)
