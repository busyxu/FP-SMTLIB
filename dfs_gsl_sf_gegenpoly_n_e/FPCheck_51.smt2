(declare-fun b_ack!279 () (_ BitVec 64))
(declare-fun a_ack!280 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!279) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!280 #x00000000)))
(assert (not (= #x00000000 a_ack!280)))
(assert (not (= #x00000001 a_ack!280)))
(assert (not (= #x00000002 a_ack!280)))
(assert (= #x00000003 a_ack!280))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!279) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  b_ack!279
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x4018000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) b_ack!279)))))

(check-sat)
(exit)
