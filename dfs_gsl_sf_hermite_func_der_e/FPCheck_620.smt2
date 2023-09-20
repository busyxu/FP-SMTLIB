(declare-fun a_ack!3758 () (_ BitVec 32))
(declare-fun b_ack!3756 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!3757 () (_ BitVec 64))
(assert (not (bvslt a_ack!3758 #x00000000)))
(assert (not (bvslt b_ack!3756 #x00000000)))
(assert (not (= #x00000000 a_ack!3758)))
(assert (not (= #x00000001 a_ack!3758)))
(assert (bvslt (bvadd #x00000001 (bvsub b_ack!3756 a_ack!3758)) #x00000001))
(assert (not (bvsle #x00000001 b_ack!3756)))
(assert (bvslt b_ack!3756 a_ack!3758))
(assert (not (= #x00000000 (bvand (bvsub a_ack!3758 b_ack!3756) #x00000001))))
(assert (bvslt b_ack!3756 (bvsub a_ack!3758 b_ack!3756)))
(assert (not (bvslt #x00000000 b_ack!3756)))
(assert (bvsle #x00000001 (bvsub a_ack!3758 b_ack!3756)))
(assert (bvsle #x00000002 (bvsub a_ack!3758 b_ack!3756)))
(assert (bvsle #x00000003 (bvsub a_ack!3758 b_ack!3756)))
(assert (bvsle #x00000004 (bvsub a_ack!3758 b_ack!3756)))
(assert (bvsle #x00000005 (bvsub a_ack!3758 b_ack!3756)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3757))
                           ((_ to_fp 11 53) #x3cb0000000000000))
                   ((_ to_fp 11 53) #x3cb0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3757))
                           a!1)
                   ((_ to_fp 11 53) #x3cc0000000000000))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3757))
                           a!2)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           a!1))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3757))
                           a!3)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           a!2))))
  (FPCHECK_FADD_OVERFLOW
    (fp.mul roundNearestTiesToEven (fp.abs ((_ to_fp 11 53) c_ack!3757)) a!4)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x4014000000000000) a!3)))))))

(check-sat)
(exit)
