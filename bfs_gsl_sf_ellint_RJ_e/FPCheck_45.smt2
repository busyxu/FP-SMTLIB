(declare-fun e_ack!539 () (_ BitVec 32))
(declare-fun a_ack!540 () (_ BitVec 64))
(declare-fun b_ack!536 () (_ BitVec 64))
(declare-fun c_ack!537 () (_ BitVec 64))
(declare-fun d_ack!538 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand e_ack!539 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!540) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!536) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!537) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!540)
                    ((_ to_fp 11 53) b_ack!536))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!540)
                    ((_ to_fp 11 53) c_ack!537))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!536)
                    ((_ to_fp 11 53) c_ack!537))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!538) ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!540) ((_ to_fp 11 53) b_ack!536))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!536) ((_ to_fp 11 53) c_ack!537))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!537) ((_ to_fp 11 53) d_ack!538))))
(assert (fp.lt ((_ to_fp 11 53) d_ack!538) ((_ to_fp 11 53) #x551c4b19c41f715f)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!540)
                                   ((_ to_fp 11 53) b_ack!536))
                           ((_ to_fp 11 53) c_ack!537))
                   ((_ to_fp 11 53) d_ack!538))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!538))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) b_ack!536))))
  (FPCHECK_FDIV_ZERO
    a!2
    (fp.mul roundNearestTiesToEven
            (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) d_ack!538))
            ((_ to_fp 11 53) #x3fc999999999999a))))))

(check-sat)
(exit)
