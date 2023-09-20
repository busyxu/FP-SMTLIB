(declare-fun a_ack!227 () (_ BitVec 32))
(declare-fun b_ack!226 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!227 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!226) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!226))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ed965fea53d6e41)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!227)))))
(assert (not (= #x00000000 a_ack!227)))
(assert (= #x00000001 a_ack!227))
(assert (fp.lt ((_ to_fp 11 53) b_ack!226) ((_ to_fp 11 53) #xc086232bdd7abcd2)))
(assert (FPCHECK_FMUL_ACCURACY
  #x3cb0000000000000
  (fp.abs (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #xbff0000000000000)
                  ((_ to_fp 11 53) b_ack!226)))))

(check-sat)
(exit)
