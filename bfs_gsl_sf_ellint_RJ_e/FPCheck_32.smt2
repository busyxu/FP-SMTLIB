(declare-fun e_ack!399 () (_ BitVec 32))
(declare-fun a_ack!400 () (_ BitVec 64))
(declare-fun b_ack!396 () (_ BitVec 64))
(declare-fun c_ack!397 () (_ BitVec 64))
(declare-fun d_ack!398 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand e_ack!399 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!400) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!396) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!397) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!400)
                    ((_ to_fp 11 53) b_ack!396))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!400)
                    ((_ to_fp 11 53) c_ack!397))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!396)
                    ((_ to_fp 11 53) c_ack!397))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!398) ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!400) ((_ to_fp 11 53) b_ack!396))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!396) ((_ to_fp 11 53) c_ack!397))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!397) ((_ to_fp 11 53) d_ack!398))))
(assert (fp.lt ((_ to_fp 11 53) d_ack!398) ((_ to_fp 11 53) #x551c4b19c41f715f)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!400)
                                   ((_ to_fp 11 53) b_ack!396))
                           ((_ to_fp 11 53) c_ack!397))
                   ((_ to_fp 11 53) d_ack!398))))
  (FPCHECK_FSUB_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) d_ack!398))
            ((_ to_fp 11 53) #x3fc999999999999a))
    a_ack!400)))

(check-sat)
(exit)
