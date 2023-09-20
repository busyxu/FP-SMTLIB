(declare-fun b_ack!160 () (_ BitVec 64))
(declare-fun a_ack!161 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!160) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!161 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!160) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!161))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!160) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!160))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!160)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!160))
                           (fp.abs ((_ to_fp 11 53) b_ack!160)))
                   (fp.abs ((_ to_fp 11 53) b_ack!160)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!160)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!160)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!160))
                           (fp.abs ((_ to_fp 11 53) b_ack!160)))
                   (fp.abs ((_ to_fp 11 53) b_ack!160)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!160)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!160))
          (fp.abs ((_ to_fp 11 53) b_ack!160)))
  #x3e5ae64567f544e4))

(check-sat)
(exit)
