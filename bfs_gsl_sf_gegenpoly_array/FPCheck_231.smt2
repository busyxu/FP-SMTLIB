(declare-fun b_ack!919 () (_ BitVec 64))
(declare-fun a_ack!920 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!919) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!920 #x00000000)))
(assert (not (= #x00000000 a_ack!920)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!919) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000002 a_ack!920))
(assert (bvsle #x00000003 a_ack!920))
(assert (bvsle #x00000004 a_ack!920))
(assert (bvsle #x00000005 a_ack!920))
(assert (bvsle #x00000006 a_ack!920))
(assert (bvsle #x00000007 a_ack!920))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x401c000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) b_ack!919)))
  #x4000000000000000))

(check-sat)
(exit)
