(declare-fun b_ack!64 () (_ BitVec 64))
(declare-fun a_ack!65 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!64) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!64)
                    ((_ to_fp 11 53) a_ack!65))
            ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!64)
                    ((_ to_fp 11 53) a_ack!65))
            ((_ to_fp 11 53) #xc014000000000000))))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!64)
               ((_ to_fp 11 53) a_ack!65))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  #x3cb0000000000000
  (fp.add roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!65))
          (fp.abs ((_ to_fp 11 53) b_ack!64)))))

(check-sat)
(exit)
