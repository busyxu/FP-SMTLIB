(declare-fun d_ack!265 () (_ BitVec 64))
(declare-fun a_ack!267 () (_ BitVec 64))
(declare-fun b_ack!264 () (_ BitVec 32))
(declare-fun c_ack!266 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!265) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!267) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) d_ack!265) ((_ to_fp 11 53) #x0024000000000001)))
(assert (bvsle #x00000000 b_ack!264))
(assert (not (bvsle #x00000001 b_ack!264)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!267) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!266))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) c_ack!266))
            ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) c_ack!266))
            ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x401921fb54442d18)
               ((_ to_fp 11 53) c_ack!266))
       ((_ to_fp 11 53) #xbf60624dd2f1a9fc)))
(assert (FPCHECK_FSUB_UNDERFLOW
  (CF_exp (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x401921fb54442d18)
                  ((_ to_fp 11 53) c_ack!266)))
  #x3ff0000000000000))

(check-sat)
(exit)
