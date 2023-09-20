(declare-fun a_ack!3718 () (_ BitVec 32))
(declare-fun b_ack!3716 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!3717 () (_ BitVec 64))
(assert (not (bvslt a_ack!3718 #x00000000)))
(assert (not (bvslt b_ack!3716 #x00000000)))
(assert (not (= #x00000000 a_ack!3718)))
(assert (not (= #x00000001 a_ack!3718)))
(assert (bvslt (bvadd #x00000001 (bvsub b_ack!3716 a_ack!3718)) #x00000001))
(assert (not (bvsle #x00000001 b_ack!3716)))
(assert (bvslt b_ack!3716 a_ack!3718))
(assert (not (= #x00000000 (bvand (bvsub a_ack!3718 b_ack!3716) #x00000001))))
(assert (bvslt b_ack!3716 (bvsub a_ack!3718 b_ack!3716)))
(assert (not (bvslt #x00000000 b_ack!3716)))
(assert (bvsle #x00000001 (bvsub a_ack!3718 b_ack!3716)))
(assert (bvsle #x00000002 (bvsub a_ack!3718 b_ack!3716)))
(assert (bvsle #x00000003 (bvsub a_ack!3718 b_ack!3716)))
(assert (bvsle #x00000004 (bvsub a_ack!3718 b_ack!3716)))
(assert (bvsle #x00000005 (bvsub a_ack!3718 b_ack!3716)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3717))
                           ((_ to_fp 11 53) #x3cb0000000000000))
                   ((_ to_fp 11 53) #x3cb0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3717))
                           a!1)
                   ((_ to_fp 11 53) #x3cc0000000000000))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3717))
                           a!2)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           a!1))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3717))
                           a!3)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           a!2))))
  (FPCHECK_FMUL_OVERFLOW (fp.abs ((_ to_fp 11 53) c_ack!3717)) a!4))))))

(check-sat)
(exit)
