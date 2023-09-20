(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun h_ack!1574 () (_ BitVec 64))
(declare-fun t_ack!1573 () (_ BitVec 64))
(assert (FPCHECK_FADD_UNDERFLOW
  t_ack!1573
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) h_ack!1574)
          ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
