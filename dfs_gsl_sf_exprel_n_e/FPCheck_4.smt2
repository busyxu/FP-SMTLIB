(declare-fun a_ack!17 () (_ BitVec 32))
(declare-fun b_ack!16 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!17 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!16) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!16))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ed965fea53d6e41)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!17)))))
(assert (= #x00000000 a_ack!17))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!16) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!16) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (FPCHECK_FMUL_UNDERFLOW #x3cc0000000000000 (fp.abs (CF_exp b_ack!16))))

(check-sat)
(exit)
