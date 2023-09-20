(declare-fun a_ack!811 () (_ BitVec 32))
(declare-fun b_ack!809 () (_ BitVec 32))
(declare-fun c_ack!810 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!811 #x00000000)))
(assert (not (bvslt b_ack!809 a_ack!811)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!810) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!811 #x00000000)))
(assert (= #x00000000 a_ack!811))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!810) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!810) ((_ to_fp 11 53) #x4010000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!810))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fc0000000000000)
          ((_ to_fp 11 53) c_ack!810))
  c_ack!810))

(check-sat)
(exit)
