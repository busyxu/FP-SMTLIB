(declare-fun a_ack!442 () (_ BitVec 64))
(declare-fun c_ack!441 () (_ BitVec 64))
(declare-fun b_ack!440 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!442) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!440)
                           ((_ to_fp 11 53) b_ack!440))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!442))
                           ((_ to_fp 11 53) c_ack!441)))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!440)
                           ((_ to_fp 11 53) b_ack!440))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!442))
                           ((_ to_fp 11 53) c_ack!441)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_INVALID
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #xbfe0000000000000)
          ((_ to_fp 11 53) b_ack!440))
  a_ack!442))

(check-sat)
(exit)
