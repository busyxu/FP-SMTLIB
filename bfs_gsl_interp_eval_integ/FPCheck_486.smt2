(declare-fun x1_ack!6120 () (_ BitVec 64))
(declare-fun x0_ack!6124 () (_ BitVec 64))
(declare-fun x2_ack!6121 () (_ BitVec 64))
(declare-fun b_ack!6123 () (_ BitVec 64))
(declare-fun a_ack!6122 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6124) ((_ to_fp 11 53) x1_ack!6120)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6120) ((_ to_fp 11 53) x2_ack!6121)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6120)
                       ((_ to_fp 11 53) x0_ack!6124))
               ((_ to_fp 11 53) x0_ack!6124))
       ((_ to_fp 11 53) x1_ack!6120)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6120)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6120)
                       ((_ to_fp 11 53) x0_ack!6124)))
       ((_ to_fp 11 53) x0_ack!6124)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6121)
                       ((_ to_fp 11 53) x1_ack!6120))
               ((_ to_fp 11 53) x1_ack!6120))
       ((_ to_fp 11 53) x2_ack!6121)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6121)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6121)
                       ((_ to_fp 11 53) x1_ack!6120)))
       ((_ to_fp 11 53) x1_ack!6120)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6120)
                    ((_ to_fp 11 53) x0_ack!6124))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6121)
                    ((_ to_fp 11 53) x1_ack!6120))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6122) ((_ to_fp 11 53) b_ack!6123))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6122) ((_ to_fp 11 53) x0_ack!6124))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6123) ((_ to_fp 11 53) x2_ack!6121))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6122) ((_ to_fp 11 53) b_ack!6123))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6122) ((_ to_fp 11 53) x0_ack!6124))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6122) ((_ to_fp 11 53) x1_ack!6120))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6123) ((_ to_fp 11 53) x0_ack!6124))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6123) ((_ to_fp 11 53) x1_ack!6120)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6120) ((_ to_fp 11 53) b_ack!6123))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6120)
                    ((_ to_fp 11 53) x0_ack!6124))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!6122)
          ((_ to_fp 11 53) x0_ack!6124))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!6122)
          ((_ to_fp 11 53) x0_ack!6124))))

(check-sat)
(exit)
