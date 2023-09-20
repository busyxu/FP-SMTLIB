(declare-fun nu2_ack!18 () (_ BitVec 64))
(declare-fun x_ack!19 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_POW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!19) ((_ to_fp 11 53) nu2_ack!18))))
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!18)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) x_ack!19)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FINVALID_POW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) nu2_ack!18)
          ((_ to_fp 11 53) x_ack!19))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) nu2_ack!18)
          ((_ to_fp 11 53) x_ack!19))))

(check-sat)
(exit)
