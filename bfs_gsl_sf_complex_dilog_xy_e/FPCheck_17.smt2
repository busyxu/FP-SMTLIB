(declare-fun b_ack!49 () (_ BitVec 64))
(declare-fun a_ack!50 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!49) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!50)
                                   ((_ to_fp 11 53) a_ack!50))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!49)
                                   ((_ to_fp 11 53) b_ack!49)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3cb0000000000000)))))
(assert (fp.lt (fp.add roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!50)
                       ((_ to_fp 11 53) a_ack!50))
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!49)
                       ((_ to_fp 11 53) b_ack!49)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!50) ((_ to_fp 11 53) #x3fe76c8b43958106))))
(assert (FPCHECK_FDIV_ACCURACY b_ack!49 #x0020000000000000))

(check-sat)
(exit)
