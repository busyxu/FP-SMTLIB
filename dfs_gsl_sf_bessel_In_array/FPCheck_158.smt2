(declare-fun c_ack!682 () (_ BitVec 64))
(declare-fun a_ack!683 () (_ BitVec 32))
(declare-fun b_ack!681 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!682))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (not (bvslt b_ack!681 a_ack!683)))
(assert (not (bvslt a_ack!683 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!682) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!681))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!682))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (bvsle #x00000000 (bvsub b_ack!681 a_ack!683)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.abs ((_ to_fp 11 53) c_ack!682)))
  (CF_exp (fp.abs ((_ to_fp 11 53) c_ack!682)))))

(check-sat)
(exit)
