(declare-fun a_ack!534 () (_ BitVec 32))
(declare-fun b_ack!533 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!534 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!533) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!533))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ed965fea53d6e41)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!534)))))
(assert (not (= #x00000000 a_ack!534)))
(assert (not (= #x00000001 a_ack!534)))
(assert (not (= #x00000002 a_ack!534)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!533)
       ((_ to_fp 11 53) roundNearestTiesToEven a_ack!534)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_log (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!533)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!534))))))
  (FPCHECK_FADD_ACCURACY
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) #x8000000000000000)
            ((_ to_fp 11 53) b_ack!533))
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!534)
            a!1))))

(check-sat)
(exit)
