(declare-fun a_ack!279 () (_ BitVec 32))
(declare-fun b_ack!278 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!279 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!278) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!278) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!279) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!278) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!278) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!279)))
(assert (not (= #x00000000 a_ack!279)))
(assert (not (= #x00000001 a_ack!279)))
(assert (FPCHECK_FADD_OVERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 a_ack!279))
  #x3fe0000000000000))

(check-sat)
(exit)
