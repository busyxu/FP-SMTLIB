(declare-fun b_ack!180 () (_ BitVec 64))
(declare-fun a_ack!181 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!180) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!181 #x00000000)))
(assert (not (= #x00000000 a_ack!181)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!180) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000002 a_ack!181))
(assert (bvsle #x00000003 a_ack!181))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x4008000000000000)
          ((_ to_fp 11 53) b_ack!180))
  #x3ff0000000000000))

(check-sat)
(exit)
