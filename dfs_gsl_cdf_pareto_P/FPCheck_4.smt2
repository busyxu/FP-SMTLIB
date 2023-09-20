(declare-fun nu2_ack!16 () (_ BitVec 64))
(declare-fun x_ack!17 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_POW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!17) ((_ to_fp 11 53) nu2_ack!16))))
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!16)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) x_ack!17)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FINVALID_POW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) nu2_ack!16)
          ((_ to_fp 11 53) x_ack!17))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) nu2_ack!16)
          ((_ to_fp 11 53) x_ack!17))))

(check-sat)
(exit)
