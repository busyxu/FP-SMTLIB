(declare-fun a_ack!69 () (_ BitVec 32))
(declare-fun b_ack!68 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!69 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!68) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!68) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!68) ((_ to_fp 11 53) #x3f30000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!69)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!68))))))
  (FPCHECK_FADD_OVERFLOW
    a!1
    (fp.div roundNearestTiesToEven
            ((_ to_fp 11 53) #x3ff0000000000000)
            ((_ to_fp 11 53) b_ack!68)))))

(check-sat)
(exit)
