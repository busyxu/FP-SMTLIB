(declare-fun x1_ack!32 () (_ BitVec 64))
(declare-fun x0_ack!36 () (_ BitVec 64))
(declare-fun y0_ack!33 () (_ BitVec 64))
(declare-fun x_ack!34 () (_ BitVec 64))
(declare-fun y_ack!35 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!36) ((_ to_fp 11 53) x1_ack!32))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!33) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!34) ((_ to_fp 11 53) x0_ack!36))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!34) ((_ to_fp 11 53) x1_ack!32))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!35) ((_ to_fp 11 53) y0_ack!33))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!35) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!32)
                       ((_ to_fp 11 53) x0_ack!36))
               ((_ to_fp 11 53) x0_ack!36))
       ((_ to_fp 11 53) x1_ack!32)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!32)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!32)
                       ((_ to_fp 11 53) x0_ack!36)))
       ((_ to_fp 11 53) x0_ack!36)))
(assert (FPCHECK_FSUB_OVERFLOW #x3ff0000000000000 y0_ack!33))

(check-sat)
(exit)
