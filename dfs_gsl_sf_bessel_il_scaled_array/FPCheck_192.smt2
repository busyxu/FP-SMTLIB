(declare-fun b_ack!715 () (_ BitVec 64))
(declare-fun a_ack!716 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!715) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!715) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!716) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!715) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!716)))
(assert (not (= #x00000000 a_ack!716)))
(assert (not (= #x00000001 a_ack!716)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!715))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!715)
                       ((_ to_fp 11 53) b_ack!715))
               ((_ to_fp 11 53) b_ack!715))
       ((_ to_fp 11 53) b_ack!715)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!715))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!715)
                       ((_ to_fp 11 53) b_ack!715))
               ((_ to_fp 11 53) b_ack!715))
       ((_ to_fp 11 53) b_ack!715)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!716))
                           ((_ to_fp 11 53) #x3ff8000000000000)))))
  (FPCHECK_FDIV_ACCURACY a!1 #x4005bf0a8b145769)))

(check-sat)
(exit)
