(declare-fun a_ack!9 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!9)
               ((_ to_fp 11 53) a_ack!9))
       ((_ to_fp 11 53) #x3f9932cbb7f0cf30)))
(assert (FPCHECK_FDIV_ACCURACY a_ack!9 #x3ffc5bf891b4ef6b))

(check-sat)
(exit)
