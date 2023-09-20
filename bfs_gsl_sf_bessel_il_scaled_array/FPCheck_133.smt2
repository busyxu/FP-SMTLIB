(declare-fun b_ack!481 () (_ BitVec 64))
(declare-fun a_ack!482 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!481) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!481) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!482) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!481) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #xffffffff a_ack!482))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!481) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!481))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!481)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!481))
                           (fp.abs ((_ to_fp 11 53) b_ack!481)))
                   (fp.abs ((_ to_fp 11 53) b_ack!481)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!481)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!481)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!481))
                           (fp.abs ((_ to_fp 11 53) b_ack!481)))
                   (fp.abs ((_ to_fp 11 53) b_ack!481)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!481)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!481))
                           (fp.abs ((_ to_fp 11 53) b_ack!481)))
                   ((_ to_fp 11 53) #x3e5ae64567f544e4))))
  (FPCHECK_FADD_UNDERFLOW #x3ec71de3a556c734 a!1)))

(check-sat)
(exit)
