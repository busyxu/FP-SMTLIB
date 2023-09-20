(declare-fun e_ack!1474 () (_ BitVec 32))
(declare-fun a_ack!1475 () (_ BitVec 64))
(declare-fun b_ack!1471 () (_ BitVec 64))
(declare-fun c_ack!1472 () (_ BitVec 64))
(declare-fun d_ack!1473 () (_ BitVec 64))
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand e_ack!1474 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1475) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1471) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1472) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1475)
                    ((_ to_fp 11 53) b_ack!1471))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1475)
                    ((_ to_fp 11 53) c_ack!1472))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1471)
                    ((_ to_fp 11 53) c_ack!1472))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1473) ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1475) ((_ to_fp 11 53) b_ack!1471)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1475) ((_ to_fp 11 53) c_ack!1472)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1475) ((_ to_fp 11 53) d_ack!1473)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1475) ((_ to_fp 11 53) #x551c4b19c41f715f)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1475)
                       ((_ to_fp 11 53) b_ack!1471))
               ((_ to_fp 11 53) a_ack!1475))
       ((_ to_fp 11 53) b_ack!1471)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1475)
                       ((_ to_fp 11 53) b_ack!1471))
               ((_ to_fp 11 53) b_ack!1471))
       ((_ to_fp 11 53) a_ack!1475)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1475)
                                   ((_ to_fp 11 53) b_ack!1471))
                           ((_ to_fp 11 53) c_ack!1472))
                   ((_ to_fp 11 53) d_ack!1473))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) d_ack!1473))
                 a!1)
         ((_ to_fp 11 53) d_ack!1473))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1475)
                                   ((_ to_fp 11 53) b_ack!1471))
                           ((_ to_fp 11 53) c_ack!1472))
                   ((_ to_fp 11 53) d_ack!1473))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) d_ack!1473))
                 ((_ to_fp 11 53) d_ack!1473))
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1475)
                                   ((_ to_fp 11 53) b_ack!1471))
                           ((_ to_fp 11 53) c_ack!1472))
                   ((_ to_fp 11 53) d_ack!1473))))
(let ((a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) d_ack!1473)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1475)
                                   ((_ to_fp 11 53) b_ack!1471))
                           ((_ to_fp 11 53) c_ack!1472))
                   ((_ to_fp 11 53) d_ack!1473))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1473))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) d_ack!1473)))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3fc999999999999a)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1475)
                                   ((_ to_fp 11 53) b_ack!1471))
                           ((_ to_fp 11 53) c_ack!1472))
                   ((_ to_fp 11 53) d_ack!1473))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1473))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) #x3fc999999999999a))))
  (fp.eq a!2 (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) d_ack!1473))))))

(check-sat)
(exit)
