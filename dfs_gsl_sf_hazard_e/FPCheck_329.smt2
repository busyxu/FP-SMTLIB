(declare-fun a_ack!483 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!483) ((_ to_fp 11 53) #x4039000000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!483)
                       ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!483)
                       ((_ to_fp 11 53) #x3ff6a09e667f3bcd)))
       ((_ to_fp 11 53) #x3f9932cbb7f0cf30)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!483)
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
                   ((_ to_fp 11 53) #x3ffc5bf891b4ef6b))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf5769e97db28853)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f3f974a090d9ac8)
                                   a!1)))))
  (FPCHECK_FADD_UNDERFLOW
    #x3f4f00f4c5e56661
    (fp.mul roundNearestTiesToEven
            a!1
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f55a095517b6a89)
                    a!2))))))

(check-sat)
(exit)
