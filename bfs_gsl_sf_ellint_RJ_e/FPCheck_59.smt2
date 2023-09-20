(declare-fun e_ack!694 () (_ BitVec 32))
(declare-fun a_ack!695 () (_ BitVec 64))
(declare-fun b_ack!691 () (_ BitVec 64))
(declare-fun c_ack!692 () (_ BitVec 64))
(declare-fun d_ack!693 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand e_ack!694 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!695) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!691) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!692) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!695)
                    ((_ to_fp 11 53) b_ack!691))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!695)
                    ((_ to_fp 11 53) c_ack!692))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!691)
                    ((_ to_fp 11 53) c_ack!692))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!693) ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!695) ((_ to_fp 11 53) b_ack!691))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!691) ((_ to_fp 11 53) c_ack!692))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!692) ((_ to_fp 11 53) d_ack!693))))
(assert (fp.lt ((_ to_fp 11 53) d_ack!693) ((_ to_fp 11 53) #x551c4b19c41f715f)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!695)
                                   ((_ to_fp 11 53) b_ack!691))
                           ((_ to_fp 11 53) c_ack!692))
                   ((_ to_fp 11 53) d_ack!693))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!693))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) d_ack!693))))
  (FPCHECK_FDIV_ACCURACY
    a!2
    (fp.mul roundNearestTiesToEven
            (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) d_ack!693))
            ((_ to_fp 11 53) #x3fc999999999999a))))))

(check-sat)
(exit)
