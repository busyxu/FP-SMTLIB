(declare-fun e_ack!329 () (_ BitVec 32))
(declare-fun a_ack!330 () (_ BitVec 64))
(declare-fun b_ack!326 () (_ BitVec 64))
(declare-fun c_ack!327 () (_ BitVec 64))
(declare-fun d_ack!328 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand e_ack!329 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!330) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!326) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!327) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!330)
                    ((_ to_fp 11 53) b_ack!326))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!330)
                    ((_ to_fp 11 53) c_ack!327))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!326)
                    ((_ to_fp 11 53) c_ack!327))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!328) ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!330) ((_ to_fp 11 53) b_ack!326))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!326) ((_ to_fp 11 53) c_ack!327))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!327) ((_ to_fp 11 53) d_ack!328))))
(assert (fp.lt ((_ to_fp 11 53) d_ack!328) ((_ to_fp 11 53) #x551c4b19c41f715f)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!330)
                                   ((_ to_fp 11 53) b_ack!326))
                           ((_ to_fp 11 53) c_ack!327))
                   ((_ to_fp 11 53) d_ack!328))))
  (FPCHECK_FADD_ACCURACY a!1 d_ack!328)))

(check-sat)
(exit)
