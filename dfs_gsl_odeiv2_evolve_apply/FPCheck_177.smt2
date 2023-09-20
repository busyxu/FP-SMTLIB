(declare-fun t_ack!1604 () (_ BitVec 64))
(declare-fun t1_ack!1605 () (_ BitVec 64))
(declare-fun h_ack!1607 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!1606 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!1605)
                    ((_ to_fp 11 53) t_ack!1604))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!1605)
               ((_ to_fp 11 53) t_ack!1604))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!1607) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!1605)
                ((_ to_fp 11 53) t_ack!1604))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!1607)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!1605)
               ((_ to_fp 11 53) t_ack!1604))))
(assert (FPCHECK_FMUL_OVERFLOW #x3fd4000000000000 y1_ack!1606))

(check-sat)
(exit)
