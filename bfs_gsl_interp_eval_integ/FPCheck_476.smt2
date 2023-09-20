(declare-fun x1_ack!5999 () (_ BitVec 64))
(declare-fun x0_ack!6003 () (_ BitVec 64))
(declare-fun x2_ack!6000 () (_ BitVec 64))
(declare-fun b_ack!6002 () (_ BitVec 64))
(declare-fun a_ack!6001 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6003) ((_ to_fp 11 53) x1_ack!5999)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5999) ((_ to_fp 11 53) x2_ack!6000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5999)
                       ((_ to_fp 11 53) x0_ack!6003))
               ((_ to_fp 11 53) x0_ack!6003))
       ((_ to_fp 11 53) x1_ack!5999)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5999)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5999)
                       ((_ to_fp 11 53) x0_ack!6003)))
       ((_ to_fp 11 53) x0_ack!6003)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6000)
                       ((_ to_fp 11 53) x1_ack!5999))
               ((_ to_fp 11 53) x1_ack!5999))
       ((_ to_fp 11 53) x2_ack!6000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6000)
                       ((_ to_fp 11 53) x1_ack!5999)))
       ((_ to_fp 11 53) x1_ack!5999)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5999)
                    ((_ to_fp 11 53) x0_ack!6003))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6000)
                    ((_ to_fp 11 53) x1_ack!5999))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6001) ((_ to_fp 11 53) b_ack!6002))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6001) ((_ to_fp 11 53) x0_ack!6003))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6002) ((_ to_fp 11 53) x2_ack!6000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6001) ((_ to_fp 11 53) b_ack!6002))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6001) ((_ to_fp 11 53) x0_ack!6003))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6001) ((_ to_fp 11 53) x1_ack!5999))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6002) ((_ to_fp 11 53) x0_ack!6003))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6002) ((_ to_fp 11 53) x1_ack!5999)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5999) ((_ to_fp 11 53) b_ack!6002))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5999)
                    ((_ to_fp 11 53) x0_ack!6003))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6001)
                                   ((_ to_fp 11 53) x0_ack!6003))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6001)
                                   ((_ to_fp 11 53) x0_ack!6003)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5999)
                                   ((_ to_fp 11 53) x0_ack!6003))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5999)
                                   ((_ to_fp 11 53) x0_ack!6003))))))
  (FPCHECK_FADD_UNDERFLOW
    a!1
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!6001)
                    ((_ to_fp 11 53) x0_ack!6003))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5999)
                    ((_ to_fp 11 53) x0_ack!6003))))))

(check-sat)
(exit)
