(declare-fun x1_ack!760 () (_ BitVec 64))
(declare-fun x0_ack!764 () (_ BitVec 64))
(declare-fun y0_ack!761 () (_ BitVec 64))
(declare-fun x_ack!762 () (_ BitVec 64))
(declare-fun y_ack!763 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!764) ((_ to_fp 11 53) x1_ack!760))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!761) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!762) ((_ to_fp 11 53) x0_ack!764))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!762) ((_ to_fp 11 53) x1_ack!760)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!763) ((_ to_fp 11 53) y0_ack!761))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!763) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!762)
                  ((_ to_fp 11 53) x0_ack!764))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!760)
                  ((_ to_fp 11 53) x0_ack!764)))))

(check-sat)
(exit)
