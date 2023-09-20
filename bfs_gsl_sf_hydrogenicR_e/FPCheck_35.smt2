(declare-fun a_ack!265 () (_ BitVec 32))
(declare-fun b_ack!262 () (_ BitVec 32))
(declare-fun c_ack!263 () (_ BitVec 64))
(declare-fun d_ack!264 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!265 #x00000001)))
(assert (not (bvslt (bvadd #xffffffff a_ack!265) b_ack!262)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!263) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!264) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvule (bvadd a_ack!265 b_ack!262) #x000000aa)))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp_unsigned 11 53)
            roundNearestTiesToEven
            (bvadd a_ack!265 b_ack!262))
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x3ff0000000000000))

(check-sat)
(exit)
