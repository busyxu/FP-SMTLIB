(declare-fun a_ack!200 () (_ BitVec 32))
(declare-fun b_ack!199 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!200 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!199) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!199))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ed965fea53d6e41)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!200)))))
(assert (not (= #x00000000 a_ack!200)))
(assert (= #x00000001 a_ack!200))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!199) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!199) ((_ to_fp 11 53) #xbf60624dd2f1a9fc))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!199) ((_ to_fp 11 53) #x3f60624dd2f1a9fc)))
(assert (FPCHECK_FADD_UNDERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fc999999999999a)
          ((_ to_fp 11 53) b_ack!199))))

(check-sat)
(exit)
