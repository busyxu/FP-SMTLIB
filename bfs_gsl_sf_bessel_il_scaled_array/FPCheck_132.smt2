(declare-fun b_ack!479 () (_ BitVec 64))
(declare-fun a_ack!480 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!479) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!479) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!480) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!479) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #xffffffff a_ack!480))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!479) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!479))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!479)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!479))
                           (fp.abs ((_ to_fp 11 53) b_ack!479)))
                   (fp.abs ((_ to_fp 11 53) b_ack!479)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!479)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!479)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!479))
                           (fp.abs ((_ to_fp 11 53) b_ack!479)))
                   (fp.abs ((_ to_fp 11 53) b_ack!479)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!479)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!479))
                           (fp.abs ((_ to_fp 11 53) b_ack!479)))
                   ((_ to_fp 11 53) #x3e5ae64567f544e4))))
  (FPCHECK_FADD_OVERFLOW #x3ec71de3a556c734 a!1)))

(check-sat)
(exit)
