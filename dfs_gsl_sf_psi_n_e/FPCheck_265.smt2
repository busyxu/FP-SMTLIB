(declare-fun a_ack!699 () (_ BitVec 32))
(declare-fun b_ack!698 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (= #x00000000 a_ack!699))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!698) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!698) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!698) ((_ to_fp 11 53) #xc000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) b_ack!698))
        ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!698)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!698))
                           (fp.abs ((_ to_fp 11 53) b_ack!698)))
                   (fp.abs ((_ to_fp 11 53) b_ack!698)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!698)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!698)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!698))
                           (fp.abs ((_ to_fp 11 53) b_ack!698)))
                   (fp.abs ((_ to_fp 11 53) b_ack!698)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!698)))))
(assert (FPCHECK_FDIV_OVERFLOW
  #x4020000000000000
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!698))
          (fp.abs ((_ to_fp 11 53) b_ack!698)))))

(check-sat)
(exit)
