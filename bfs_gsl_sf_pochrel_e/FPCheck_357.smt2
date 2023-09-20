(declare-fun a_ack!915 () (_ BitVec 64))
(declare-fun b_ack!914 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!914))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               (fp.abs ((_ to_fp 11 53) a_ack!915)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!914) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!915) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!915)
               ((_ to_fp 11 53) b_ack!914))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!914))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!915))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!915) ((_ to_fp 11 53) #x4065600000000000)))
(assert (FPCHECK_FADD_ACCURACY a_ack!915 b_ack!914))

(check-sat)
(exit)
