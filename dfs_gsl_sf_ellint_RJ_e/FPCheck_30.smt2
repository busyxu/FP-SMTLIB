(declare-fun e_ack!359 () (_ BitVec 32))
(declare-fun a_ack!360 () (_ BitVec 64))
(declare-fun b_ack!356 () (_ BitVec 64))
(declare-fun c_ack!357 () (_ BitVec 64))
(declare-fun d_ack!358 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand e_ack!359 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!360) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!356) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!357) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!360)
                    ((_ to_fp 11 53) b_ack!356))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!360)
                    ((_ to_fp 11 53) c_ack!357))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!356)
                    ((_ to_fp 11 53) c_ack!357))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!358) ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!360) ((_ to_fp 11 53) b_ack!356)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!360) ((_ to_fp 11 53) c_ack!357)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!360) ((_ to_fp 11 53) d_ack!358))))
(assert (fp.lt ((_ to_fp 11 53) d_ack!358) ((_ to_fp 11 53) #x551c4b19c41f715f)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!360)
                       ((_ to_fp 11 53) b_ack!356))
               ((_ to_fp 11 53) a_ack!360))
       ((_ to_fp 11 53) b_ack!356)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!360)
                       ((_ to_fp 11 53) b_ack!356))
               ((_ to_fp 11 53) b_ack!356))
       ((_ to_fp 11 53) a_ack!360)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!360)
                                   ((_ to_fp 11 53) b_ack!356))
                           ((_ to_fp 11 53) c_ack!357))
                   ((_ to_fp 11 53) d_ack!358))))
(let ((a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) d_ack!358)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!360)
                                   ((_ to_fp 11 53) b_ack!356))
                           ((_ to_fp 11 53) c_ack!357))
                   ((_ to_fp 11 53) d_ack!358))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!358))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) d_ack!358)))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3fc999999999999a)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!360)
                                   ((_ to_fp 11 53) b_ack!356))
                           ((_ to_fp 11 53) c_ack!357))
                   ((_ to_fp 11 53) d_ack!358))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!358))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) #x3fc999999999999a))))
  (fp.eq a!2 (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) d_ack!358))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!360)
                                   ((_ to_fp 11 53) b_ack!356))
                           ((_ to_fp 11 53) c_ack!357))
                   ((_ to_fp 11 53) d_ack!358))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!358))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) a_ack!360))))
  (fp.eq (fp.add roundNearestTiesToEven a!2 ((_ to_fp 11 53) a_ack!360))
         (fp.mul roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) d_ack!358))
                 ((_ to_fp 11 53) #x3fc999999999999a))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!360)
                                   ((_ to_fp 11 53) b_ack!356))
                           ((_ to_fp 11 53) c_ack!357))
                   ((_ to_fp 11 53) d_ack!358))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!358))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) a_ack!360))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!358))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   a!2)))
  (fp.eq a!3 ((_ to_fp 11 53) a_ack!360))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!360)
                                   ((_ to_fp 11 53) b_ack!356))
                           ((_ to_fp 11 53) c_ack!357))
                   ((_ to_fp 11 53) d_ack!358))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!358))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) a_ack!360))))
  (FPCHECK_FDIV_ZERO
    a!2
    (fp.mul roundNearestTiesToEven
            (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) d_ack!358))
            ((_ to_fp 11 53) #x3fc999999999999a))))))

(check-sat)
(exit)
