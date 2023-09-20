(declare-fun c_ack!679 () (_ BitVec 64))
(declare-fun a_ack!680 () (_ BitVec 32))
(declare-fun b_ack!678 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!679))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (not (bvslt b_ack!678 a_ack!680)))
(assert (not (bvslt a_ack!680 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!679) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!678))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!679))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (bvsle #x00000000 (bvsub b_ack!678 a_ack!680)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.abs ((_ to_fp 11 53) c_ack!679)))
  (CF_exp (fp.abs ((_ to_fp 11 53) c_ack!679)))))

(check-sat)
(exit)
