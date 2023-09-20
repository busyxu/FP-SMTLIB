(declare-fun a_ack!265 () (_ BitVec 32))
(declare-fun b_ack!264 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!265 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!264) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!264) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!264) ((_ to_fp 11 53) #x3f30000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x40d3880000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) b_ack!264)))))

(check-sat)
(exit)
