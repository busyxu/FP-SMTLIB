(declare-fun e_ack!1469 () (_ BitVec 32))
(declare-fun a_ack!1470 () (_ BitVec 64))
(declare-fun b_ack!1466 () (_ BitVec 64))
(declare-fun c_ack!1467 () (_ BitVec 64))
(declare-fun d_ack!1468 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand e_ack!1469 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1470) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1466) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1467) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1470)
                    ((_ to_fp 11 53) b_ack!1466))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1470)
                    ((_ to_fp 11 53) c_ack!1467))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1466)
                    ((_ to_fp 11 53) c_ack!1467))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1468) ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1470) ((_ to_fp 11 53) b_ack!1466)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1470) ((_ to_fp 11 53) c_ack!1467)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1470) ((_ to_fp 11 53) d_ack!1468)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1470) ((_ to_fp 11 53) #x551c4b19c41f715f)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1470)
                       ((_ to_fp 11 53) b_ack!1466))
               ((_ to_fp 11 53) a_ack!1470))
       ((_ to_fp 11 53) b_ack!1466)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1470)
                       ((_ to_fp 11 53) b_ack!1466))
               ((_ to_fp 11 53) b_ack!1466))
       ((_ to_fp 11 53) a_ack!1470)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1470)
                                   ((_ to_fp 11 53) b_ack!1466))
                           ((_ to_fp 11 53) c_ack!1467))
                   ((_ to_fp 11 53) d_ack!1468))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) d_ack!1468))
                 a!1)
         ((_ to_fp 11 53) d_ack!1468))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1470)
                                   ((_ to_fp 11 53) b_ack!1466))
                           ((_ to_fp 11 53) c_ack!1467))
                   ((_ to_fp 11 53) d_ack!1468))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) d_ack!1468))
                 ((_ to_fp 11 53) d_ack!1468))
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1470)
                                   ((_ to_fp 11 53) b_ack!1466))
                           ((_ to_fp 11 53) c_ack!1467))
                   ((_ to_fp 11 53) d_ack!1468))))
  (FPCHECK_FMUL_ACCURACY
    (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) d_ack!1468))
    #x3fc999999999999a)))

(check-sat)
(exit)
