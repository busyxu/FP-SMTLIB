(declare-fun a_ack!262 () (_ BitVec 64))
(declare-fun c_ack!261 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!262) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!262))
       ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!261))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) c_ack!261))
            ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) c_ack!261))
            ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x401921fb54442d18)
               ((_ to_fp 11 53) c_ack!261))
       ((_ to_fp 11 53) #xbf60624dd2f1a9fc)))
(assert (FPCHECK_FSUB_ACCURACY
  (CF_exp (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x401921fb54442d18)
                  ((_ to_fp 11 53) c_ack!261)))
  #x3ff0000000000000))

(check-sat)
(exit)
