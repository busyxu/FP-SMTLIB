(declare-fun a_ack!2684 () (_ BitVec 32))
(declare-fun b_ack!2682 () (_ BitVec 32))
(declare-fun c_ack!2683 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!2684 #x00000000)))
(assert (not (bvslt b_ack!2682 a_ack!2684)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2683) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!2684 #x00000000)))
(assert (not (= #x00000000 a_ack!2684)))
(assert (not (= #x00000001 a_ack!2684)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2683) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2683) ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ed965fea53d6e41)
                          ((_ to_fp 11 53) c_ack!2683))
                  (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvmul a_ack!2684 a_ack!2684))
                          ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!1)))
(assert (bvslt #x00000032 a_ack!2684))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2683) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2684)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2683)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2684))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f947ae147ae147b)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!2683)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2684))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!2683)
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2684))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!2683)
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2684))))

(check-sat)
(exit)
