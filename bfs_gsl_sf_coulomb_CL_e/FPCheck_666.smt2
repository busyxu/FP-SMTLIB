(declare-fun a_ack!2369 () (_ BitVec 64))
(declare-fun b_ack!2368 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2369) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!2369))
       ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!2368))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (not (fp.gt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) b_ack!2368))
            ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) b_ack!2368))
            ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x401921fb54442d18)
                    ((_ to_fp 11 53) b_ack!2368))
            ((_ to_fp 11 53) #xbf60624dd2f1a9fc))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x401921fb54442d18)
               ((_ to_fp 11 53) b_ack!2368))
       ((_ to_fp 11 53) #x3f60624dd2f1a9fc)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fd0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x401921fb54442d18)
          ((_ to_fp 11 53) b_ack!2368))))

(check-sat)
(exit)
