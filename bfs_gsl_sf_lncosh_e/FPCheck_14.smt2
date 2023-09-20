(declare-fun a_ack!22 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!22))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!22))
            ((_ to_fp 11 53) #x403205966f2b4f12))))
(assert (let ((a!1 (fp.abs (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe62e42fefa39ef)
                           (fp.abs ((_ to_fp 11 53) a_ack!22))))))
  (FPCHECK_FMUL_ACCURACY #x3cc0000000000000 a!1)))

(check-sat)
(exit)
