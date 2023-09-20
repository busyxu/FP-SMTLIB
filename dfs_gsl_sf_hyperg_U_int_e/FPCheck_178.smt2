(declare-fun c_ack!698 () (_ BitVec 64))
(declare-fun b_ack!697 () (_ BitVec 32))
(declare-fun a_ack!699 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!698) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!698) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!698) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvsle #x00000001 b_ack!697)))
(assert (not (= #xffffffff (bvsub a_ack!699 b_ack!697))))
(assert (not (= #xfffffffe (bvsub a_ack!699 b_ack!697))))
(assert (not (= (bvsub #x00000002 b_ack!697)
        (bvadd #x00000002 (bvsub a_ack!699 b_ack!697)))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!699 b_ack!697))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!699 b_ack!697))))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!697))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (let ((a!1 (fp.lt ((_ to_fp 11 53) #x3ff0000000000000)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fefae147ae147ae)
                          (fp.abs ((_ to_fp 11 53) c_ack!698))))))
  (not a!1)))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!699 b_ack!697))))))
  (fp.lt a!1 ((_ to_fp 11 53) #x4014000000000000))))
(assert (bvslt (bvsub #x00000002 b_ack!697) #x00000005))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!698) ((_ to_fp 11 53) #x4000000000000000))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!699 b_ack!697))))))
  (fp.lt a!1 ((_ to_fp 11 53) #x4024000000000000))))
(assert (bvslt (bvsub #x00000002 b_ack!697) #x0000000a))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!698) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt (bvadd #x00000001 (bvsub a_ack!699 b_ack!697)) #x00000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!699 b_ack!697))))))
  (not (fp.geq ((_ to_fp 11 53)
                 roundNearestTiesToEven
                 (bvsub #x00000002 b_ack!697))
               (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) c_ack!698))))))
(assert (not (fp.leq ((_ to_fp 11 53)
               roundNearestTiesToEven
               (bvsub #x00000002 b_ack!697))
             ((_ to_fp 11 53) c_ack!698))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!699 b_ack!697))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!697))
                           a!1)
                   ((_ to_fp 11 53) c_ack!698))))
  (FPCHECK_FSUB_UNDERFLOW a!2 #x4010000000000000))))

(check-sat)
(exit)
