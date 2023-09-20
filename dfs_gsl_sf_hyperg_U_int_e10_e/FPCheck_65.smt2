(declare-fun c_ack!308 () (_ BitVec 64))
(declare-fun b_ack!307 () (_ BitVec 32))
(declare-fun a_ack!309 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!308) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!308) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!308) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvsle #x00000001 b_ack!307)))
(assert (not (= #xffffffff (bvsub a_ack!309 b_ack!307))))
(assert (not (= #xfffffffe (bvsub a_ack!309 b_ack!307))))
(assert (not (= (bvsub #x00000002 b_ack!307)
        (bvadd #x00000002 (bvsub a_ack!309 b_ack!307)))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!309 b_ack!307))))))
  (fp.gt a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!309 b_ack!307))))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!307))))))
  (fp.gt a!2 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!309 b_ack!307)))))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!309 b_ack!307))))))
(let ((a!3 (fp.abs (fp.sub roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!307))))))
(let ((a!4 (fp.lt (fp.mul roundNearestTiesToEven a!1 a!3)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fefae147ae147ae)
                          (fp.abs ((_ to_fp 11 53) c_ack!308))))))
  (not a!4)))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!309 b_ack!307))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x4014000000000000)))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!309 b_ack!307))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x4024000000000000)))))
(assert (bvslt (bvadd #x00000001 (bvsub a_ack!309 b_ack!307)) #x00000000))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #xfffffffe b_ack!307))
                           ((_ to_fp 11 53) c_ack!308))
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #xfffffffe b_ack!307)))))
  (fp.eq a!1 ((_ to_fp 11 53) c_ack!308))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #xfffffffe b_ack!307))
                           ((_ to_fp 11 53) c_ack!308))
                   ((_ to_fp 11 53) c_ack!308))))
  (fp.eq a!1
         ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #xfffffffe b_ack!307)))))
(assert (bvslt (bvadd #x00000001 (bvsub a_ack!309 b_ack!307)) #xffffffff))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!308)
          ((_ to_fp 11 53) #xc000000000000000))
  ((_ to_fp 11 53) roundNearestTiesToEven (bvsub #x00000002 b_ack!307))))

(check-sat)
(exit)
