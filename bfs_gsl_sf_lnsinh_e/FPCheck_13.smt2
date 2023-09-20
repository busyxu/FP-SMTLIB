(declare-fun a_ack!20 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!20) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!20))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!20) ((_ to_fp 11 53) #x403205966f2b4f12))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3cc0000000000000
  (fp.abs (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) #xbfe62e42fefa39ef)
                  ((_ to_fp 11 53) a_ack!20)))))

(check-sat)
(exit)
