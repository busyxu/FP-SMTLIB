(declare-fun a_ack!609 () (_ BitVec 32))
(declare-fun b_ack!608 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!609 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!608) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!608))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ed965fea53d6e41)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!609)))))
(assert (not (= #x00000000 a_ack!609)))
(assert (not (= #x00000001 a_ack!609)))
(assert (not (= #x00000002 a_ack!609)))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!608)
            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!609))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!608)
            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!609))))
(assert (fp.gt ((_ to_fp 11 53) b_ack!608)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #xc024000000000000)
               ((_ to_fp 11 53) roundNearestTiesToEven a_ack!609))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!609)
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x3ff0000000000000))

(check-sat)
(exit)
